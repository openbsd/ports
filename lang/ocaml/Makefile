# $OpenBSD: Makefile,v 1.23 2002/09/16 18:54:37 lebel Exp $

COMMENT=	"ML language based on complete class-based objective system"

DISTNAME=	ocaml-3.06
CATEGORIES=	lang
MASTER_SITES=	http://caml.inria.fr/distrib/${DISTNAME}/
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}

HOMEPAGE=	http://www.ocaml.org/

MAINTAINER=	Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

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

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "sparc" || \
	${MACHINE_ARCH} == "alpha"
ALL_TARGET=	world bootstrap opt opt.opt
SED_PLIST=	|sed -e '/^%%native%%$$/r${PKGDIR}/PFRAG.native' -e '//d'
.else
ALL_TARGET=	world bootstrap
SED_PLIST=	|sed -e '/^%%native%%$$/d'
.endif

NO_REGRESS=	Yes

DOCFILES=	${DISTNAME}-refman.html.tar.gz

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml/html/libref
	@${INSTALL_DATA} ${WRKDIR}/htmlman/*.{html,gif} ${PREFIX}/share/doc/ocaml/html
	@${INSTALL_DATA} ${WRKDIR}/htmlman/libref/* ${PREFIX}/share/doc/ocaml/html/libref
	@strip ${PREFIX}/bin/ocamlrun ${PREFIX}/bin/ocamlyacc
	@${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/ocaml

.include <bsd.port.mk>
