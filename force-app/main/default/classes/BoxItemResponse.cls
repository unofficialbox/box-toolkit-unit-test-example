public class BoxItemResponse {

	public class Restricted_to {
		public String scope {get;set;} 
		public Object_Z object_Z {get;set;} // in json: object

		public Restricted_to(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'scope') {
							scope = parser.getText();
						} else if (text == 'object') {
							object_Z = new Object_Z(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Restricted_to consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Path_collection {
		public List<Object_Z> entries {get;set;} 
		public Integer total_count {get;set;} 

		public Path_collection(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'entries') {
							entries = arrayOfObject_Z(parser);
						} else if (text == 'total_count') {
							total_count = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Path_collection consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Status {
		public String state {get;set;} 

		public Status(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'state') {
							state = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Status consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public String id {get;set;} 
	public String type {get;set;} 
	public List<String> allowed_invitee_roles {get;set;} 
	public Classification classification {get;set;} 
	public Integer comment_count {get;set;} 
	public String content_created_at {get;set;} 
	public String content_modified_at {get;set;} 
	public String created_at {get;set;} 
	public Created_by created_by {get;set;} 
	public String description {get;set;} 
	public String disposition_at {get;set;} 
	public String etag {get;set;} 
	public String expires_at {get;set;} 
	public Expiring_embed_link expiring_embed_link {get;set;} 
	public String extension {get;set;} 
	public File_version file_version {get;set;} 
	public Boolean has_collaborations {get;set;} 
	public Boolean is_accessible_via_shared_link {get;set;} 
	public Boolean is_externally_owned {get;set;} 
	public Boolean is_package {get;set;} 
	public String item_status {get;set;} 
	public Lock lock {get;set;} 
	public Metadata metadata {get;set;} 
	public String modified_at {get;set;} 
	public Created_by modified_by {get;set;} 
	public String name {get;set;} 
	public Created_by owned_by {get;set;} 
	public Object_Z parent {get;set;} 
	public Path_collection path_collection {get;set;} 
	public Permissions permissions {get;set;} 
	public String purged_at {get;set;} 
	public Representations representations {get;set;} 
	public String sequence_id {get;set;} 
	public String sha1 {get;set;} 
	public Shared_link shared_link {get;set;} 
	public List<String> shared_link_permission_options {get;set;} 
	public Integer size {get;set;} 
	public List<String> tags {get;set;} 
	public String trashed_at {get;set;} 
	public String uploader_display_name {get;set;} 
	public String version_number {get;set;} 
	public Watermark_info watermark_info {get;set;} 

	public BoxItemResponse(JSONParser parser) {
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'id') {
						id = parser.getText();
					} else if (text == 'type') {
						type = parser.getText();
					} else if (text == 'allowed_invitee_roles') {
						allowed_invitee_roles = arrayOfString(parser);
					} else if (text == 'classification') {
						classification = new Classification(parser);
					} else if (text == 'comment_count') {
						comment_count = parser.getIntegerValue();
					} else if (text == 'content_created_at') {
						content_created_at = parser.getText();
					} else if (text == 'content_modified_at') {
						content_modified_at = parser.getText();
					} else if (text == 'created_at') {
						created_at = parser.getText();
					} else if (text == 'created_by') {
						created_by = new Created_by(parser);
					} else if (text == 'description') {
						description = parser.getText();
					} else if (text == 'disposition_at') {
						disposition_at = parser.getText();
					} else if (text == 'etag') {
						etag = parser.getText();
					} else if (text == 'expires_at') {
						expires_at = parser.getText();
					} else if (text == 'expiring_embed_link') {
						expiring_embed_link = new Expiring_embed_link(parser);
					} else if (text == 'extension') {
						extension = parser.getText();
					} else if (text == 'file_version') {
						file_version = new File_version(parser);
					} else if (text == 'has_collaborations') {
						has_collaborations = parser.getBooleanValue();
					} else if (text == 'is_accessible_via_shared_link') {
						is_accessible_via_shared_link = parser.getBooleanValue();
					} else if (text == 'is_externally_owned') {
						is_externally_owned = parser.getBooleanValue();
					} else if (text == 'is_package') {
						is_package = parser.getBooleanValue();
					} else if (text == 'item_status') {
						item_status = parser.getText();
					} else if (text == 'lock') {
						lock = new Lock(parser);
					} else if (text == 'metadata') {
						metadata = new Metadata(parser);
					} else if (text == 'modified_at') {
						modified_at = parser.getText();
					} else if (text == 'modified_by') {
						modified_by = new Created_by(parser);
					} else if (text == 'name') {
						name = parser.getText();
					} else if (text == 'owned_by') {
						owned_by = new Created_by(parser);
					} else if (text == 'parent') {
						parent = new Object_Z(parser);
					} else if (text == 'path_collection') {
						path_collection = new Path_collection(parser);
					} else if (text == 'permissions') {
						permissions = new Permissions(parser);
					} else if (text == 'purged_at') {
						purged_at = parser.getText();
					} else if (text == 'representations') {
						representations = new Representations(parser);
					} else if (text == 'sequence_id') {
						sequence_id = parser.getText();
					} else if (text == 'sha1') {
						sha1 = parser.getText();
					} else if (text == 'shared_link') {
						shared_link = new Shared_link(parser);
					} else if (text == 'shared_link_permission_options') {
						shared_link_permission_options = arrayOfString(parser);
					} else if (text == 'size') {
						size = parser.getIntegerValue();
					} else if (text == 'tags') {
						tags = arrayOfString(parser);
					} else if (text == 'trashed_at') {
						trashed_at = parser.getText();
					} else if (text == 'uploader_display_name') {
						uploader_display_name = parser.getText();
					} else if (text == 'version_number') {
						version_number = parser.getText();
					} else if (text == 'watermark_info') {
						watermark_info = new Watermark_info(parser);
					} else {
						System.debug(LoggingLevel.WARN, 'BoxItemResponse consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class Shared_link {
		public String access {get;set;} 
		public Integer download_count {get;set;} 
		public String download_url {get;set;} 
		public String effective_access {get;set;} 
		public String effective_permission {get;set;} 
		public Boolean is_password_enabled {get;set;} 
		public Permissions_Z permissions {get;set;} 
		public Integer preview_count {get;set;} 
		public String unshared_at {get;set;} 
		public String url {get;set;} 
		public String vanity_name {get;set;} 
		public String vanity_url {get;set;} 

		public Shared_link(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'access') {
							access = parser.getText();
						} else if (text == 'download_count') {
							download_count = parser.getIntegerValue();
						} else if (text == 'download_url') {
							download_url = parser.getText();
						} else if (text == 'effective_access') {
							effective_access = parser.getText();
						} else if (text == 'effective_permission') {
							effective_permission = parser.getText();
						} else if (text == 'is_password_enabled') {
							is_password_enabled = parser.getBooleanValue();
						} else if (text == 'permissions') {
							permissions = new Permissions_Z(parser);
						} else if (text == 'preview_count') {
							preview_count = parser.getIntegerValue();
						} else if (text == 'unshared_at') {
							unshared_at = parser.getText();
						} else if (text == 'url') {
							url = parser.getText();
						} else if (text == 'vanity_name') {
							vanity_name = parser.getText();
						} else if (text == 'vanity_url') {
							vanity_url = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Shared_link consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Object_Z {
		public String id {get;set;} 
		public String etag {get;set;} 
		public String type {get;set;} 
		public String sequence_id {get;set;} 
		public String name {get;set;} 

		public Object_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'etag') {
							etag = parser.getText();
						} else if (text == 'type') {
							type = parser.getText();
						} else if (text == 'sequence_id') {
							sequence_id = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Object_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Metadata {
		public Enterprise_27335 enterprise_27335 {get;set;} 

		public Metadata(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'enterprise_27335') {
							enterprise_27335 = new Enterprise_27335(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Metadata consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Entries {
		public Content content {get;set;} 
		public Info info {get;set;} 
		public Properties properties {get;set;} 
		public String representation {get;set;} 
		public Status status {get;set;} 

		public Entries(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'content') {
							content = new Content(parser);
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'properties') {
							properties = new Properties(parser);
						} else if (text == 'representation') {
							representation = parser.getText();
						} else if (text == 'status') {
							status = new Status(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Entries consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Info {
		public String url {get;set;} 

		public Info(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'url') {
							url = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Info consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Properties {
		public String dimensions {get;set;} 
		public Boolean paged {get;set;} 
		public Boolean thumb {get;set;} 

		public Properties(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'dimensions') {
							dimensions = parser.getText();
						} else if (text == 'paged') {
							paged = parser.getBooleanValue();
						} else if (text == 'thumb') {
							thumb = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Properties consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Lock {
		public String id {get;set;} 
		public String type {get;set;} 
		public String app_type {get;set;} 
		public String created_at {get;set;} 
		public Created_by created_by {get;set;} 
		public String expired_at {get;set;} 
		public Boolean is_download_prevented {get;set;} 

		public Lock(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'type') {
							type = parser.getText();
						} else if (text == 'app_type') {
							app_type = parser.getText();
						} else if (text == 'created_at') {
							created_at = parser.getText();
						} else if (text == 'created_by') {
							created_by = new Created_by(parser);
						} else if (text == 'expired_at') {
							expired_at = parser.getText();
						} else if (text == 'is_download_prevented') {
							is_download_prevented = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Lock consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class File_version {
		public String id {get;set;} 
		public String type {get;set;} 
		public String sha1 {get;set;} 

		public File_version(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'type') {
							type = parser.getText();
						} else if (text == 'sha1') {
							sha1 = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'File_version consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Content {
		public String url_template {get;set;} 

		public Content(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'url_template') {
							url_template = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Content consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Classification {
		public String color {get;set;} 
		public String definition {get;set;} 
		public String name {get;set;} 

		public Classification(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'color') {
							color = parser.getText();
						} else if (text == 'definition') {
							definition = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Classification consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Permissions {
		public Boolean can_annotate {get;set;} 
		public Boolean can_comment {get;set;} 
		public Boolean can_delete {get;set;} 
		public Boolean can_download {get;set;} 
		public Boolean can_invite_collaborator {get;set;} 
		public Boolean can_preview {get;set;} 
		public Boolean can_rename {get;set;} 
		public Boolean can_set_share_access {get;set;} 
		public Boolean can_share {get;set;} 
		public Boolean can_upload {get;set;} 
		public Boolean can_view_annotations_all {get;set;} 
		public Boolean can_view_annotations_self {get;set;} 

		public Permissions(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'can_annotate') {
							can_annotate = parser.getBooleanValue();
						} else if (text == 'can_comment') {
							can_comment = parser.getBooleanValue();
						} else if (text == 'can_delete') {
							can_delete = parser.getBooleanValue();
						} else if (text == 'can_download') {
							can_download = parser.getBooleanValue();
						} else if (text == 'can_invite_collaborator') {
							can_invite_collaborator = parser.getBooleanValue();
						} else if (text == 'can_preview') {
							can_preview = parser.getBooleanValue();
						} else if (text == 'can_rename') {
							can_rename = parser.getBooleanValue();
						} else if (text == 'can_set_share_access') {
							can_set_share_access = parser.getBooleanValue();
						} else if (text == 'can_share') {
							can_share = parser.getBooleanValue();
						} else if (text == 'can_upload') {
							can_upload = parser.getBooleanValue();
						} else if (text == 'can_view_annotations_all') {
							can_view_annotations_all = parser.getBooleanValue();
						} else if (text == 'can_view_annotations_self') {
							can_view_annotations_self = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Permissions consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Permissions_Z {
		public Boolean can_download {get;set;} 
		public Boolean can_edit {get;set;} 
		public Boolean can_preview {get;set;} 

		public Permissions_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'can_download') {
							can_download = parser.getBooleanValue();
						} else if (text == 'can_edit') {
							can_edit = parser.getBooleanValue();
						} else if (text == 'can_preview') {
							can_preview = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Permissions_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Watermark_info {
		public Boolean is_watermarked {get;set;} 

		public Watermark_info(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'is_watermarked') {
							is_watermarked = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Watermark_info consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Created_by {
		public String id {get;set;} 
		public String type {get;set;} 
		public String login {get;set;} 
		public String name {get;set;} 

		public Created_by(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'id') {
							id = parser.getText();
						} else if (text == 'type') {
							type = parser.getText();
						} else if (text == 'login') {
							login = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Created_by consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class MarketingCollateral {
		public Boolean canEdit {get;set;} 
		public String id {get;set;} 
		public String parent {get;set;} 
		public String scope {get;set;} 
		public String template {get;set;} 
		public String type {get;set;} 
		public Integer typeVersion {get;set;} 
		public Integer version {get;set;} 

		public MarketingCollateral(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == '$canEdit') {
							canEdit = parser.getBooleanValue();
						} else if (text == '$id') {
							id = parser.getText();
						} else if (text == '$parent') {
							parent = parser.getText();
						} else if (text == '$scope') {
							scope = parser.getText();
						} else if (text == '$template') {
							template = parser.getText();
						} else if (text == '$type') {
							type = parser.getText();
						} else if (text == '$typeVersion') {
							typeVersion = parser.getIntegerValue();
						} else if (text == '$version') {
							version = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'MarketingCollateral consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Representations {
		public List<Entries> entries {get;set;} 

		public Representations(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'entries') {
							entries = arrayOfEntries(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Representations consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Enterprise_27335 {
		public MarketingCollateral marketingCollateral {get;set;} 

		public Enterprise_27335(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'marketingCollateral') {
							marketingCollateral = new MarketingCollateral(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Enterprise_27335 consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Expiring_embed_link {
		public String access_token {get;set;} 
		public Integer expires_in {get;set;} 
		public List<Restricted_to> restricted_to {get;set;} 
		public String token_type {get;set;} 
		public String url {get;set;} 

		public Expiring_embed_link(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'access_token') {
							access_token = parser.getText();
						} else if (text == 'expires_in') {
							expires_in = parser.getIntegerValue();
						} else if (text == 'restricted_to') {
							restricted_to = arrayOfRestricted_to(parser);
						} else if (text == 'token_type') {
							token_type = parser.getText();
						} else if (text == 'url') {
							url = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Expiring_embed_link consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public static BoxItemResponse parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new BoxItemResponse(parser);
	}
	
	public static void consumeObject(System.JSONParser parser) {
		Integer depth = 0;
		do {
			System.JSONToken curr = parser.getCurrentToken();
			if (curr == System.JSONToken.START_OBJECT || 
				curr == System.JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == System.JSONToken.END_OBJECT ||
				curr == System.JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}

    private static List<Restricted_to> arrayOfRestricted_to(System.JSONParser p) {
        List<Restricted_to> res = new List<Restricted_to>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Restricted_to(p));
        }
        return res;
    }

    private static List<Object_Z> arrayOfObject_Z(System.JSONParser p) {
        List<Object_Z> res = new List<Object_Z>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Object_Z(p));
        }
        return res;
    }

    private static List<String> arrayOfString(System.JSONParser p) {
        List<String> res = new List<String>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(p.getText());
        }
        return res;
    }

    private static List<Entries> arrayOfEntries(System.JSONParser p) {
        List<Entries> res = new List<Entries>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Entries(p));
        }
        return res;
    }
}