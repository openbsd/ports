# $OpenBSD: Makefile.inc,v 1.4 2021/10/31 11:01:45 bentley Exp $

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

CONFIGURE_STYLE ?=	gnu
