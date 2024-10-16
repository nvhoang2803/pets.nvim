import os
from PIL import Image

# Path to the main folder containing the subfolders
main_folder = './media/cat/grey'

# Function to process all PNG images in the folder and its subfolders
def crop_images_in_folder(folder_path):
    for root, _, files in os.walk(folder_path):  # Recursively walk through all subfolders
        for file in files:
            if file.endswith(".png"):
                img_path = os.path.join(root, file)

                # Open the image
                img = Image.open(img_path)

                # Ensure the image size is 128x128
                if img.size == (128, 128):
                    # Crop the bottom 128x88 portion
                    cropped_img = img.crop((0, 40, 128, 128))  # (left, top, right, bottom)

                    # Save the cropped image, overwriting the original file
                    cropped_img.save(img_path)
                    print(f"Cropped and saved: {img_path}")
                else:
                    print(f"Image {img_path} is not 128x128, skipping...")

# Run the function
crop_images_in_folder(main_folder)

print("Cropping completed for all images.")