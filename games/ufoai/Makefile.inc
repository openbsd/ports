# $OpenBSD: Makefile.inc,v 1.1.1.1 2011/05/27 07:20:11 ajacoutot Exp $

CATEGORIES = 	games games/ufoai

HOMEPAGE = 	http://ufoai.sourceforge.net/

MAINTAINER = 	Kirill Bychkov <yason@linklevel.net>

MASTER_SITES = 	${MASTER_SITE_SOURCEFORGE:=ufoai/}

# Numerous free licenses, refer to LICENSES 
# and unknown license on some textures.
# Next release is planned to be fully free.
PERMIT_PACKAGE_CDROM =  No
PERMIT_PACKAGE_FTP =    No
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =  No
