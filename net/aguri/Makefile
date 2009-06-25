# $OpenBSD: Makefile,v 1.7 2009/06/25 01:02:54 jolan Exp $
COMMENT=		aggregation-based network traffic profiler

DISTNAME=		aguri-0.7
PKGNAME=		${DISTNAME}p1
CATEGORIES=		net

HOMEPAGE=		http://www.csl.sony.co.jp/person/kjc/software.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

MASTER_SITES=		ftp://ftp.csl.sony.co.jp/pub/kjc/

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKDIST}/scripts/*
	@perl -pi -e 's,lib/aguri,bin,' ${WRKDIST}/scripts/*
	@perl -pi -e 's,\.pl,,' ${WRKDIST}/scripts/*

post-install:
.for script in agurify.pl density.pl makeplot.pl makeimages.pl
	${INSTALL_SCRIPT} ${WRKDIST}/scripts/${script} \
		${PREFIX}/bin/${script:R}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/aguri
	${INSTALL_DATA} ${WRKDIST}/scripts/README ${PREFIX}/share/doc/aguri

NO_REGRESS=		Yes

.include <bsd.port.mk>
