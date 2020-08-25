# $OpenBSD: Makefile,v 1.22 2020/08/25 18:19:19 edd Exp $

COMMENT = 	X.509 library

DISTNAME = 	libksba-1.4.0
CATEGORIES = 	security

SHARED_LIBS = 	ksba 1.0	# 20.0

MASTER_SITES =	${MASTER_SITE_GNUPG:=libksba/}

HOMEPAGE = 	https://www.gnupg.org/software/libksba/index.html

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX = 		.tar.bz2

LIB_DEPENDS = 		devel/gettext,-runtime \
			security/libgpg-error
WANTLIB += gpg-error iconv intl

CONFIGURE_STYLE = 	gnu

.include <bsd.port.mk>
