# $OpenBSD: Makefile,v 1.13 2013/09/01 17:16:46 rpe Exp $
COMMENT=		aggregation-based network traffic profiler

DISTNAME=		aguri-0.7
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://www.csl.sony.co.jp/person/kjc/software.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcap

MASTER_SITES=		http://ftp.sunet.se/pub/network/monitoring/kjc/

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
