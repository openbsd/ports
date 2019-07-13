# $OpenBSD: Makefile.inc,v 1.3 2019/07/13 10:59:27 sthen Exp $

COMMENT ?=		${LANG} language pack for apertium

DISTNAME ?=		apertium-$L-$V

CATEGORIES ?=		textproc

HOMEPAGE ?=		https://www.apertium.org/

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE ?=	Yes

MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=apertium/}

BUILD_DEPENDS +=	textproc/apertium \
			textproc/libxslt \
			textproc/lttoolbox
RUN_DEPENDS +=		textproc/apertium

CONFIGURE_STYLE =	gnu
