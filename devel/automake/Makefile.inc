# $OpenBSD: Makefile.inc,v 1.3 2013/11/09 23:19:02 naddy Exp $

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

