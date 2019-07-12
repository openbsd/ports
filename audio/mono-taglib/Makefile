# $OpenBSD: Makefile,v 1.9 2019/07/12 20:43:36 sthen Exp $

COMMENT=	tagging library for the Mono framework

V=		2.0.3.7
DISTNAME=	taglib-sharp-${V}
PKGNAME=	mono-taglib-${V}
REVISION=	1

CATEGORIES=	audio

HOMEPAGE=	http://www.taglib-sharp.com/
MASTER_SITES=	http://download.banshee-project.org/taglib-sharp/${V}/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/mono
MODMONO_GMCS_COMPAT=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/gnome/mono-gnome

USE_GMAKE=	Yes

DLLMAP_FILES=	src/policy.2.0.taglib-sharp.config

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-docs

.include <bsd.port.mk>
