COMMENT=	pager utility that speaks Chinese

DISTNAME=       cless-290
PKGNAME=        zh-${DISTNAME}
CATEGORIES=     chinese misc
MASTER_SITES=   http://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/
REVISION =	2

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses

CONFIGURE_STYLE= gnu dest old
CFLAGS+=        -DHANZI # LDFLAGS=-s datadir=/usr/local/lib/less

post-install:
	${INSTALL_DATA} ${WRKSRC}/README.CLESS ${PREFIX}/share/doc/cless

.include <bsd.port.mk>
