# $OpenBSD: Makefile,v 1.79 2019/07/12 20:49:52 sthen Exp $

COMMENT-main=	active host monitoring tool
COMMENT-mux=	symon data gatherer

V=		2.88
DISTNAME=	symon-$V
WRKDIST=	${WRKDIR}/symon
PKGNAME-main=	${DISTNAME}
FULLPKGNAME-mux= symux-$V
REVISION-main=	5
REVISION-mux=	3

CATEGORIES=	sysutils net

HOMEPAGE=	http://www.xs4all.nl/~wpd/symon

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB-main=	c
WANTLIB-mux=	c fontconfig pthread rrd

MASTER_SITES=	${HOMEPAGE}/philes/

MULTI_PACKAGES=	-main -mux
MODULES=	perl

LIB_DEPENDS-mux= net/rrdtool

NO_TEST=	Yes

MAKE_ENV=	CLIENTDIR="${P5SITE}" \
		LIBS="-L${X11BASE}/lib" \
		MANDIR="man" \
		SHRDIR="share/examples/symon"

.ifdef DEBUG
# avoid stripping the binaries
MAKE_ENV+=	DEBUG=1
.endif

# XXX disable pf queue support until it can be updated for new PF queues
post-patch:
	rm ${WRKSRC}/platform/OpenBSD/sm_pfq.c

post-build:
	cd ${WRKSRC}/client && \
	    pod2man SymuxClient.pm > SymuxClient.pm.tmp && \
	    mv SymuxClient.pm.tmp SymuxClient.3p

post-install:
	mv ${PREFIX}/${P5SITE}/getsymonitem.pl ${PREFIX}/share/examples/symon/
	rm ${PREFIX}/${P5SITE}/SymuxClient.0
	${INSTALL_MAN} ${WRKSRC}/client/SymuxClient.3p ${PREFIX}/man/man3p/

.include <bsd.port.mk>
