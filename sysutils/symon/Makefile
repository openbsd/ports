COMMENT-main=	active host monitoring tool
COMMENT-mux=	symon data gatherer

GH_ACCOUNT=	dijkstrw
GH_PROJECT=	symon
GH_TAGNAME=	2.91
FULLPKGNAME-mux= symux-${GH_TAGNAME}

CATEGORIES=	sysutils net

HOMEPAGE=	https://github.com/dijkstrw/symon

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB-main=	c util

# uses pledge(), unveil()
WANTLIB-mux=	c rrd

MULTI_PACKAGES=	-main -mux
MODULES=	perl

LIB_DEPENDS-mux= net/rrdtool

NO_TEST=	Yes

MAKE_ENV=	CLIENTDIR="${P5SITE}" \
		LIBS="-L${X11BASE}/lib" \
		MANDIR="man" \
		SHRDIR="share/examples/symon"

post-build:
	cd ${WRKSRC}/client && \
	    pod2man SymuxClient.pm > SymuxClient.pm.tmp && \
	    mv SymuxClient.pm.tmp SymuxClient.3p

post-install:
	mv ${PREFIX}/${P5SITE}/getsymonitem.pl ${PREFIX}/share/examples/symon/
	rm ${PREFIX}/${P5SITE}/SymuxClient.0
	${INSTALL_MAN} ${WRKSRC}/client/SymuxClient.3p ${PREFIX}/man/man3p/

.include <bsd.port.mk>
