# $OpenBSD: Makefile,v 1.14 2016/03/11 19:59:16 naddy Exp $

COMMENT = 	X.509 library

DISTNAME = 	libksba-1.3.3
CATEGORIES = 	security

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

.include <bsd.port.mk>
