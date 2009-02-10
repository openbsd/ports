/* $OpenBSD: gnome-keyring-query.c,v 1.2 2009/02/10 21:01:23 ajacoutot Exp $ */

/*
 * This file was found on:
 * http://gentoo-wiki.com/HOWTO_Use_gnome-keyring_to_store_SSH_passphrases
 *
 * It has been provided the PUBLIC DOMAIN, AS-IS, without warranty.
 */

#include <stdlib.h>
#include <stdio.h>

#include <glib.h>
#include "gnome-keyring.h"


#define APPLICATION_NAME "gnome-keyring-query"
#define MAX_PASSWORD_LENGTH 100


char * get_password(const char * name);
int    set_password(const char * name, const char * password);


void usage()
{
    puts("Usage:\n"
	 "    " APPLICATION_NAME " <mode> <name>\n"
	 "Parameters:\n"
	 "    mode     - either 'get' or 'set' (without quotes)\n"
	 "    name     - a name to identify the key\n"
	 "Notes:\n"
	 "    If mode is 'get', then the password is dumped to stdout.\n"
	 "    If mode is 'set', then the password is read from stdin.\n");
    exit(EXIT_FAILURE);
}


int main(int argc, char * argv[])
{
    enum
    {
	MODE_GET, MODE_SET
    } mode;
    char * name;
    char * password;
    
    g_set_application_name(APPLICATION_NAME);
    
    if (argc != 3)
	usage();
	
    if (g_ascii_strcasecmp(argv[1], "get") == 0)
	mode = MODE_GET;
    else if (g_ascii_strcasecmp(argv[1], "set") == 0)
	mode = MODE_SET;
    else
    {
	fprintf(stderr, "Invalid mode: %s\n", argv[1]);
	exit(EXIT_FAILURE);
    }
    
    name = argv[2];
    
    switch (mode)
    {
	case MODE_GET:
	    password = get_password(name);
	    if (!password)
	    {
		fprintf(stderr, "Failed to get password: %s\n", name);
		exit(EXIT_FAILURE);
	    }
	    
	    puts(password);
	    g_free(password);
	    break;
	    
	case MODE_SET:
	    password = g_malloc(MAX_PASSWORD_LENGTH);
	    *password = '\0';
	    fgets(password, MAX_PASSWORD_LENGTH, stdin);
	    
	    if (!set_password(name, password))
	    {
		fprintf(stderr, "Failed to set password: %s\n", name);
		exit(EXIT_FAILURE);
	    }
	    
	    g_free(password);
	    break;
    }
    
    return 0;
}


char * get_password(const char * name)
{
    GnomeKeyringAttributeList * attributes;
    GnomeKeyringResult result;
    GList * found_list;
    GList * i;
    GnomeKeyringFound * found;
    char * password;
    
    attributes = g_array_new(FALSE, FALSE, sizeof (GnomeKeyringAttribute));
    gnome_keyring_attribute_list_append_string(attributes,
	    "name",
	    name);
    gnome_keyring_attribute_list_append_string(attributes,
	    "magic",
	    APPLICATION_NAME);
    
    result = gnome_keyring_find_items_sync(GNOME_KEYRING_ITEM_GENERIC_SECRET,
	    attributes,
	    &found_list);
    gnome_keyring_attribute_list_free(attributes);
    
    if (result != GNOME_KEYRING_RESULT_OK)
	return NULL;
    
    for (i = found_list; i != NULL; i = i->next)
    {
	found = i->data;
	password = g_strdup(found->secret);
	break;
    }
    gnome_keyring_found_list_free(found_list);
    
    return password;
}


int set_password(const char * name, const char * password)
{
    GnomeKeyringAttributeList * attributes;
    GnomeKeyringResult result;
    guint item_id;
    
    attributes = g_array_new(FALSE, FALSE, sizeof (GnomeKeyringAttribute));
    gnome_keyring_attribute_list_append_string(attributes,
	    "name",
	    name);
    gnome_keyring_attribute_list_append_string(attributes,
	    "magic",
	    APPLICATION_NAME);
    
    result = gnome_keyring_item_create_sync(NULL,
	    GNOME_KEYRING_ITEM_GENERIC_SECRET,
	    name,
	    attributes,
	    password,
	    TRUE,
	    &item_id);
    gnome_keyring_attribute_list_free(attributes);
    
    return (result == GNOME_KEYRING_RESULT_OK);
}
