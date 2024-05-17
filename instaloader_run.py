from instaloader import Instaloader, Profile 
L = Instaloader()
instagram_username = input("Enter instagram username: ")
# number_post = int((input("Enter number post: ")))
number_post = 10000
PROFILE = instagram_username
profile = Profile.from_username(L.context, PROFILE)
posts_sorted_by_likes = sorted(profile.get_posts(), key=lambda post: post.likes,reverse=True)
selected_range = posts_sorted_by_likes[0:number_post] #to download from only 20 posts
for post in selected_range:
    L.download_post(post, PROFILE)

# delete xz and txt file
import os
dir_name = os.listdir(instagram_username)
for item in dir_name:
    if item.endswith(".xz"):
        os.remove(os.path.join(instagram_username, item))
# for item in dir_name:
    # if item.endswith(".txt"):
        # os.remove(os.path.join(instagram_username, item))

## zip folder instagram_username
# import shutil
# shutil.make_archive(instagram_username, 'zip', instagram_username)