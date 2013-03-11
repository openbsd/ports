# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:45 espie Exp $
COMMENT=		aggregation-based network traffic profiler

DISTNAME=		aguri-0.7
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://www.csl.sony.co.jp/person/kjc/software.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcap

MASTER_SITES=		ftp://ftp.csl.sony.co.jp/pub/kjc/

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"
USE_GROFF =		Yes

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

NO_TEST=		Yes

.include <bsd.port.mk>
