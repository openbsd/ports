# $OpenBSD: Makefile,v 1.8 2015/03/16 18:07:46 naddy Exp $

COMMENT =		Color Transformation Language interpreter

DISTNAME =		ctl-1.4.1
REVISION =		1

SHARED_LIBS +=  IlmCtl               0.0      # .2.0
SHARED_LIBS +=  IlmCtlMath           0.0      # .2.0
SHARED_LIBS +=  IlmCtlSimd           0.0      # .2.0

CATEGORIES =		graphics lang
HOMEPAGE =		http://www.oscars.org/science-technology/council/projects/ctl.html

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m stdc++ Half Iex IlmThread Imath pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ampasctl/}

LIB_DEPENDS =		graphics/ilmbase

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
