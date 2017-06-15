# $OpenBSD: Makefile,v 1.33 2017/06/15 10:00:56 fcambus Exp $

COMMENT =	mikmod sound library

DISTNAME =	libmikmod-3.3.11
SHARED_LIBS +=	mikmod               4.0      # .3.0
CATEGORIES =	audio devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

HOMEPAGE =	http://mikmod.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	m pthread sndio

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mikmod/}

SEPARATE_BUILD = Yes
CONFIGURE_STYLE = gnu

CONFIGURE_ARGS+= --disable-dl \
		 --disable-oss \
		 --disable-esd

.include <bsd.port.mk>
