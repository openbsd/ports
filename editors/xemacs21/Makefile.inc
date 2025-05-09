COMMENT=	heavily customizable and extensible editor
DISTNAME=	xemacs-${BRANCH}.${VERSION}
CATEGORIES=	editors

HOMEPAGE=	http://www.xemacs.org/

# GPL
PERMIT_PACKAGE=	Yes

SITES=		http://ftp.xemacs.org/pub/xemacs/xemacs-${BRANCH}/ \
		ftp://ftp.oleane.net/pub/xemacs/xemacs-${BRANCH}/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/xemacs-${BRANCH}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.xemacs.org/pub/tux/xemacs/xemacs-${BRANCH}/


AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf old dest no-autoheader

SUBST_VARS=	GCCARCH BRANCH VERSION
# do not include OSREV
GCCARCH=	${MACHINE_ARCH}-unknown-openbsd
