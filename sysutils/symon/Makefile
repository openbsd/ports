# $OpenBSD: Makefile,v 1.59 2014/03/20 12:26:33 sthen Exp $

COMMENT-main=		active monitoring tool

V=			2.86
REVISION=		2
DISTNAME=		symon-$V
WRKDIST=		${WRKDIR}/symon
PKGNAME-main=		${DISTNAME}
FULLPKGNAME-mon=	symon-mon-$V
FULLPKGNAME-mux=	symon-mux-$V

CATEGORIES=	sysutils net

HOMEPAGE=	http://www.xs4all.nl/~wpd/symon

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c fontconfig rrd
LIB_DEPENDS=	net/rrdtool

MASTER_SITES=	${HOMEPAGE}/philes/

MULTI_PACKAGES=	-main -mon -mux
MODULES=	perl

# client only package
COMMENT-mon=	active host monitor
WANTLIB-mon=	c
LIB_DEPENDS-mon=

# gatherer only package
COMMENT-mux=	symon data gatherer

NO_TEST=	Yes

MAKE_ENV=	CLIENTDIR="${P5SITE}" \
		LIBS="-L${X11BASE}/lib" \
		MANDIR="man" \
		SHRDIR="share/examples/symon"

.ifdef DEBUG
# avoid stripping the binaries
MAKE_ENV+=		DEBUG=1
.endif

post-build:
	cd ${WRKSRC}/client && \
	    pod2man SymuxClient.pm > SymuxClient.pm.tmp && \
	    mv SymuxClient.pm.tmp SymuxClient.3p

post-install:
	mv ${PREFIX}/${P5SITE}/getsymonitem.pl ${PREFIX}/share/examples/symon/
	rm ${PREFIX}/${P5SITE}/SymuxClient.0
	${INSTALL_MAN} ${WRKSRC}/client/SymuxClient.3p ${PREFIX}/man/man3p/

.include <bsd.port.mk>
