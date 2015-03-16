# $OpenBSD: Makefile,v 1.12 2015/03/16 18:07:54 naddy Exp $

COMMENT = 	X.509 library

DISTNAME = 	libksba-1.3.2
CATEGORIES = 	security
REVISION =      0

SHARED_LIBS = 	ksba 0.2	#19

MASTER_SITES =	${MASTER_SITES_GNUPG:=libksba/}

HOMEPAGE = 	http://www.gnupg.org/related_software/libksba

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM = 	Yes

EXTRACT_SUFX = 		.tar.bz2

MODULES = 		devel/gettext

LIB_DEPENDS = 		security/libgpg-error
WANTLIB =		gpg-error>=1

CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.include <bsd.port.mk>
