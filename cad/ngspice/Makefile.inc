# $OpenBSD: Makefile.inc,v 1.1 2019/10/31 06:05:13 bentley Exp $

V ?=			30

DISTNAME ?=		ngspice-${V}

CATEGORIES ?=		cad

HOMEPAGE ?=		http://ngspice.sourceforge.net/

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>

# BSD
PERMIT_PACKAGE ?=	Yes

USE_GMAKE ?=		yes
CONFIGURE_STYLE ?=	gnu

MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=ngspice/}
