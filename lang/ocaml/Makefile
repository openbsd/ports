# $OpenBSD: Makefile,v 1.18 2002/03/21 21:09:17 espie Exp $

COMMENT=	"ML language based on complete class-based objective system"

DISTNAME=	ocaml-3.02
CATEGORIES=	lang
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.inria.fr/lang/caml-light/
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}

HOMEPAGE=	http://www.ocaml.org/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=-tkdefs '-I${LOCALBASE}/include/tk8.3 -I${LOCALBASE}/include/tcl8.3' 
CONFIGURE_ARGS+=-tklibs -L${LOCALBASE}/lib 
CONFIGURE_ARGS+=-prefix ${PREFIX} 
CONFIGURE_ARGS+=-cc '${CC} ${CFLAGS}'
CONFIGURE_ARGS+=-x11include ${X11BASE}/include -x11lib ${X11BASE}/lib

LIB_DEPENDS=	tcl83.1.3::lang/tcl/8.3 \
		tk83.1.3::x11/tk/8.3

# ocaml's configure script is too smart for its own good

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
USE_GMAKE=	Yes
ALL_TARGET=	world bootstrap opt

DOCFILES=	${DISTNAME}-refman.html.tar.gz

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml/html
	@${INSTALL_DATA} ${WRKDIR}/htmlman/* ${PREFIX}/share/doc/ocaml/html
	@strip ${PREFIX}/bin/ocamlrun ${PREFIX}/bin/ocamlyacc
	@${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/ocaml

.include <bsd.port.mk>
