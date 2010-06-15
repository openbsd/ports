# $OpenBSD: Makefile,v 1.1.1.1 2010/06/15 12:01:53 pea Exp $

COMMENT = 	X.509 Library

DISTNAME = 	libksba-1.0.7
CATEGORIES = 	security

SHARED_LIBS = 	ksba 0.0	#17.6

MASTER_SITES = 	ftp://ftp.gnupg.org/gcrypt/libksba/ 

HOMEPAGE = 	http://www.gnupg.org/related_software/libksba

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP = 	Yes

EXTRACT_SUFX = 		.tar.bz2

USE_LIBTOOL = 		Yes
MODULES = 		devel/gettext

LIB_DEPENDS = 		 gpg-error.>=1::security/libgpg-error

CONFIGURE_STYLE = 	gnu

.include <bsd.port.mk>
