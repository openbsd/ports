# $OpenBSD: Makefile,v 1.2 2017/05/30 20:12:46 ajacoutot Exp $

COMMENT=		command line integration of git with Bugzilla

# http://git.fishsoup.net/cgit/git-bz/
DISTNAME=		git-bz-e17bbae7
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		git-bz-20150908

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
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--bindir=${PREFIX}/bin \
			--mandir=${PREFIX}/man

.include <bsd.port.mk>
