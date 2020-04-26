/* $OpenBSD: uxutils.c,v 1.1 2020/04/26 19:16:07 naddy Exp $
 * Replacement for missing src/putty/unix/uxutils.c.
 */
#include "putty.h"
#include "ssh.h"

bool platform_aes_hw_available(void)
{
	return false;
}

bool platform_sha1_hw_available(void)
{
	return false;
}

bool platform_sha256_hw_available(void)
{
	return false;
}
