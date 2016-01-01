# $OpenBSD: Makefile.inc,v 1.1.1.1 2016/01/01 11:54:26 bentley Exp $

COMMENT ?=		${LANG} language pack for apertium

DISTNAME ?=		apertium-$L-$V

CATEGORIES ?=		textproc

HOMEPAGE ?=		https://www.apertium.org/

# GPLv2+
PERMIT_PACKAGE_CDROM ?=	Yes

MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=apertium/}

BUILD_DEPENDS +=	textproc/apertium \
			textproc/libxslt \
			textproc/lttoolbox
RUN_DEPENDS +=		textproc/apertium

CONFIGURE_STYLE =	gnu
