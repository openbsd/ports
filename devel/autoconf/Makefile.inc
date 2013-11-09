# $OpenBSD: Makefile.inc,v 1.5 2013/11/09 23:19:02 naddy Exp $

# most parts common to all autoconfs actually
COMMENT ?=	automatically configure source code on many Un*x platforms
DISTNAME ?=	autoconf-${VERSION}
CATEGORIES +=	devel
MASTER_SITES ?=	${MASTER_SITE_GNU:=autoconf/}

HOMEPAGE ?=	https://www.gnu.org/software/autoconf/
MAINTAINER ?=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_DISTFILES_FTP ?=	Yes
PERMIT_PACKAGE_CDROM ?=	Yes
PERMIT_PACKAGE_FTP ?=	Yes

SUFFIX ?=		-${VERSION}
SUBST_VARS +=		SUFFIX
RUN_DEPENDS +=		devel/metaauto
PKGSPEC ?=		autoconf-${VERSION}

CONFIGURE_STYLE ?= 	gnu

CONFIGURE_ENV += 	M4=/usr/bin/m4 
CONFIGURE_ENV +=	AWK="${AWK}"
CONFIGURE_ENV +=	ac_cv_sh_n_works=yes
CONFIGURE_ENV +=	MKDIR_P='mkdir -p'

CONFIGURE_ARGS += 	--program-suffix=${SUFFIX}
MAKE_FLAGS +=		pkgdatadir=${PREFIX}/share/autoconf${SUFFIX}
FAKE_FLAGS +=		lispdir=
