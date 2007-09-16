# $OpenBSD: Makefile,v 1.6 2007/09/16 02:52:59 merdely Exp $

COMMENT=		GNU PIC assembler and utilities

VERSION=		0.12.0
DISTNAME=		gputils-${VERSION}
DIST_SUBDIR=		gputils
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} gputils-testsuite-${VERSION}${EXTRACT_SUFX}:0

CATEGORIES=		devel

HOMEPAGE=		http://gputils.sourceforge.net/

MAINTAINER=		Andrew Dalgleish <openbsd@ajd.net.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gputils/}
MASTER_SITES0=		http://www.ajd.net.au/ports/

CONFIGURE_STYLE=	gnu autoconf
AUTOCONF_VERSION=	2.57
CONFIGURE_ENV=		"CC=${CC}" "CPP=${CPP}" "CFLAGS=${CFLAGS}" "CPPFLAGS=${CPPFLAGS}" "LDFLAGS=${LDFLAGS}"

# Commands used to create the testsuite tarball
# I put these here mainly for documentation, but if you can't fetch
# the tarball from MASTER_SITES0, this should be 100% reproducible.
# (I use find|pax to create the tarballs without directory timestamps.)
create-testsuite-tarball:
	rm -fr gputils/ gputils-${VERSION}
	cvs -z3 -d:pserver:anonymous@cvs.gputils.sourceforge.net:/cvsroot/gputils login
	cvs -z3 -d:pserver:anonymous@cvs.gputils.sourceforge.net:/cvsroot/gputils export -r gputils-${VERSION:S/./_/g} gputils/gpasm/testsuite > /dev/null
	mv gputils gputils-${VERSION}
	find gputils-${VERSION}/gpasm/testsuite/ -type f | pax -wzf ${FULLDISTDIR}/gputils-testsuite-${VERSION}.tar.gz 
	rm -fr gputils/ gputils-${VERSION}

do-regress:
	cd ${WRKSRC}/gpasm/testsuite && sh ./test all


DOCFILES=	gputils.lyx gputils.pdf gputils.ps
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gputils
.for FILE in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/doc/${FILE} ${PREFIX}/share/doc/gputils
.endfor

.include <bsd.port.mk>
