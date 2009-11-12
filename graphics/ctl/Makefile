# $OpenBSD: Makefile,v 1.1.1.1 2009/11/12 12:31:44 jasper Exp $

COMMENT =		Color Transformation Language interpreter

DISTNAME =		ctl-1.4.1

SHARED_LIBS +=  IlmCtl               0.0      # .2.0
SHARED_LIBS +=  IlmCtlMath           0.0      # .2.0
SHARED_LIBS +=  IlmCtlSimd           0.0      # .2.0

CATEGORIES =		graphics lang
HOMEPAGE =		http://www.oscars.org/science-technology/council/projects/ctl.html

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		m stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ampasctl/}

LIB_DEPENDS =		Half,Iex,IlmThread,Imath::graphics/ilmbase

SEPARATE_BUILD =	concurrent

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
