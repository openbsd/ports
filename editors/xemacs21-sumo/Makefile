# $OpenBSD: Makefile,v 1.5 2002/03/22 07:19:44 jasoni Exp $

# 
# What port/package will be created
#
VERSION=		2001-02-04
PKGNAME=		xemacs-sumo-21.${VERSION:S/-//g}
DISTFILES=		xemacs-sumo-${VERSION}.tar.gz

CATEGORIES=     	editors
NEED_VERSION=		1.515

HOMEPAGE=		http://www.xemacs.org/

COMMENT=		"complete set of supported XEmacs packages"
# where to send bitches about this port
#
MAINTAINER=		Jean-Yves Burlett <jean-yves@burlett.org>

# GNU GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# where the source files and patches can be fetched
MASTER_SITES= 	ftp://ftp.xemacs.org/pub/xemacs/packages/ \
		ftp://ftp.oleane.net/pub/xemacs/packages/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/packages/ \
		ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/ftp.xemacs.org/xemacs/packages/ \
		ftp://ftp.usyd.edu.au/pub/Xemacs/packages/ \
		ftp://ftp.lab.kdd.co.jp/xemacs/packages/ \
		ftp://ftp.th-darmstadt.de/pub/editors/xemacs/packages/

# Dependencies
#
# It is quite impossible to find a reliable cookie
# to tell whether xemacs21 is installed or not and is
# mule-compliant or not. it does not matter anyway.

# build/configuration variables

SEPARATE_BUILD=	concurrent

FLAVORS=mule
FLAVOR?=

.if ${FLAVOR:L:Mmule}
DISTFILES+= xemacs-mule-sumo-${VERSION}.tar.gz
.endif

EXTRACT_ONLY=
NO_BUILD=		Yes

do-install:
.for archive in ${DISTFILES}
	pax -rzs '%^\.%${PREFIX}/lib/xemacs%' \
		-f ${FULLDISTDIR}/${archive} 
.endfor
# cruft in the main archive ... (GNU tar, GNU as in 'compatible' - with itself)
	rm -f ${PREFIX}/lib/xemacs/@LongLink

.include <bsd.port.mk>
