# $OpenBSD: Makefile.inc,v 1.6 2019/07/13 10:59:26 sthen Exp $

COMMENT ?=	GNU Standards-compliant Makefile generator
HOMEPAGE ?=	https://www.gnu.org/software/automake/
MASTER_SITES ?=	${MASTER_SITE_GNU:=automake/}

SUFFIX ?=	-${VERSION}
SUBST_VARS +=	SUFFIX PKGSPEC
CATEGORIES +=	devel

# XXX check for new versions. So far, automake-1.12 is still GPLv2
# GPLv2
PERMIT_PACKAGE ?=		Yes

# we're not a python port
UPDATE_PLIST_ARGS += -i MODPY_PY_PREFIX

PORTROACH =	limit:^${VERSION}
