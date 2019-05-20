# $OpenBSD: Makefile,v 1.20 2019/05/20 22:15:22 naddy Exp $

COMMENT = 	X.509 library

DISTNAME = 	libksba-1.3.5
REVISION =	2
CATEGORIES = 	security

SHARED_LIBS = 	ksba 0.2	# 19.6

MASTER_SITES =	${MASTER_SITE_GNUPG:=libksba/}

HOMEPAGE = 	https://www.gnupg.org/software/libksba/index.html

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM = 	Yes

EXTRACT_SUFX = 		.tar.bz2

LIB_DEPENDS = 		devel/gettext,-runtime \
			security/libgpg-error
WANTLIB += gpg-error iconv intl

CONFIGURE_STYLE = 	gnu

.include <bsd.port.mk>
