# $OpenBSD: Makefile,v 1.17 2016/09/28 19:33:37 jca Exp $

COMMENT = 	X.509 library

DISTNAME = 	libksba-1.3.5
REVISION =	0
CATEGORIES = 	security

SHARED_LIBS = 	ksba 0.2	# 19.6

MASTER_SITES =	${MASTER_SITES_GNUPG:=libksba/}

HOMEPAGE = 	http://www.gnupg.org/related_software/libksba

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM = 	Yes

EXTRACT_SUFX = 		.tar.bz2

LIB_DEPENDS = 		devel/gettext \
			security/libgpg-error
WANTLIB += gpg-error iconv intl

CONFIGURE_STYLE = 	gnu

.include <bsd.port.mk>
