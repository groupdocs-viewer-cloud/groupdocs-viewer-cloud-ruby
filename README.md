# GroupDocs.Viewer Cloud Ruby SDK
Ruby gem for communicating with the GroupDocs.Viewer Cloud API

## Installation

A gem of groupdocs_viewer_cloud is available at [rubygems.org](https://rubygems.org). You can install it with:

```shell
gem install groupdocs_viewer_cloud
```    

To add dependency to your app copy following into your Gemfile and run `bundle install`:

```
gem "groupdocs_viewer_cloud", "~> 25.3"
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'groupdocs_viewer_cloud'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
app_sid = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
app_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Create instance of the API class
api = GroupDocsViewerCloud::InfoApi.from_keys(app_sid, app_key)

# Retrieve supported file-formats
response = api.get_supported_file_formats

# Print out supported file-formats
puts("Supported file-formats:")
response.formats.each do |format|
  puts("#{format.file_format} (#{format.extension})") 
end
```

## Licensing
GroupDocs.Viewer Cloud Ruby SDK licensed under [MIT License](LICENSE).

## Resources
+ [**Website**](https://www.groupdocs.cloud)
+ [**Product Home**](https://products.groupdocs.cloud/viewer)
+ [**Documentation**](https://docs.groupdocs.cloud/display/viewercloud/Home)
+ [**Free Support Forum**](https://forum.groupdocs.cloud/c/viewer)
+ [**Blog**](https://blog.groupdocs.cloud/category/viewer)

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.groupdocs.cloud/c/viewer).