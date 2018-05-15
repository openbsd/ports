# $OpenBSD: Makefile.inc,v 1.5 2018/05/15 11:17:47 espie Exp $

COMMENT ?=	GNU Standards-compliant Makefile generator
HOMEPAGE ?=	https://www.gnu.org/software/automake/
MASTER_SITES ?=	${MASTER_SITE_GNU:=automake/}

SUFFIX ?=	-${VERSION}
SUBST_VARS +=	SUFFIX PKGSPEC
CATEGORIES +=	devel

# XXX check for new versions. So far, automake-1.12 is still GPLv2
# GPLv2
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_FTP ?=		Yes

# we're not a python port
UPDATE_PLIST_ARGS += -i MODPY_PY_PREFIX

PORTROACH =	limit:^${VERSION}
