# $OpenBSD: Makefile.inc,v 1.1 2007/09/18 18:56:03 aanriot Exp $

COMMENT=	heavily customizable and extensible editor
DISTNAME=	xemacs-${BRANCH}.${VERSION}
CATEGORIES=	editors

HOMEPAGE=	http://www.xemacs.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.xemacs.org/pub/xemacs/xemacs-${BRANCH}/ \
		ftp://ftp.oleane.net/pub/xemacs/xemacs-${BRANCH}/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/xemacs-${BRANCH}/ \
		ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/ftp.xemacs.org/xemacs/xemacs-${BRANCH}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.xemacs.org/pub/tux/xemacs/xemacs-${BRANCH}/


AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf old dest no-autoheader

SUBST_VARS=	GCCARCH BRANCH VERSION
GCCARCH=	${MACHINE_ARCH}-unknown-openbsd${OSREV}
