# $OpenBSD: Makefile,v 1.1.1.1 2014/05/09 15:28:58 ajacoutot Exp $

COMMENT=		command line integration of git with Bugzilla

# git checkout Sep 6 10:15:00 2013
# 5ae7a500636ddc28bcf7a18427f388c8790623b3
DISTNAME=		git-bz-20130906

CATEGORIES=		devel

HOMEPAGE=		http://blog.fishsoup.net/2008/11/16/git-bz-bugzilla-subcommand-for-git/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://distfiles.bsdfrog.org/

MODULES=		lang/python

BUILD_DEPENDS=		shells/bash \
			textproc/asciidoc \
			textproc/xmlto

RUN_DEPENDS=		devel/git

MODPY_BUILDDEP=		No
MODPY_ADJ_FILES=	git-bz

NO_TEST=		Yes
USE_GMAKE=		Yes

CONFIGURE_SCRIPT=	${LOCALBASE}/bin/bash configure
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
