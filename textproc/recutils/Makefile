# $OpenBSD: Makefile,v 1.1.1.1 2021/03/11 08:39:43 bentley Exp $

COMMENT =	tools to access human-editable plaintext record files

DISTNAME =	recutils-1.8

SHARED_LIBS +=  rec                       0.0 # 1.0

CATEGORIES =	textproc

HOMEPAGE =	https://www.gnu.org/software/recutils/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c gcrypt gpg-error iconv intl m readline

MASTER_SITES =		${MASTER_SITE_GNU:=recutils/}

LIB_DEPENDS =		security/libgcrypt

CONFIGURE_STYLE =	gnu

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
