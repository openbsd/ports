# $OpenBSD: Makefile,v 1.1.1.1 2003/11/03 01:02:34 naddy Exp $

COMMENT=		"GNU PIC assembler and utilities"

VERSION=		0.11.7
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

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gputils/}
MASTER_SITES0=		http://www.ajd.net.au/ports/

# From Jolan:
.if ${MACHINE_ARCH:Msparc64}
CFLAGS+=	"-O0"
.endif

CONFIGURE_STYLE=	gnu autoconf
AUTOCONF_VERSION=	2.57
CONFIGURE_ENV=		"CC=${CC}" "CPP=${CPP}" "CFLAGS=${CFLAGS}" "CPPFLAGS=${CPPFLAGS}" "LDFLAGS=${LDFLAGS}"

# Commands used to create the testsuite tarball
# I put these here mainly for documentation, but if you can't fetch
# the tarball from MASTER_SITES0, this should be 100% reproducable.
create-testsuite-tarball:
	rm -fr gputils/ gputils-${VERSION}
	cvs -z3 -d:pserver:anonymous@cvs.gputils.sourceforge.net:/cvsroot/gputils export -r gputils-${VERSION:S/./_/g} gputils/gpasm/testsuite > /dev/null
	mv gputils gputils-${VERSION}
	find gputils-${VERSION} -type d -print0 | xargs -0 touch -am -t 0000000000
	tar czf ${FULLDISTDIR}/gputils-testsuite-${VERSION}.tar.gz gputils-${VERSION}/gpasm/testsuite/
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
