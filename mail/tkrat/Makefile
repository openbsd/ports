# $OpenBSD: Makefile,v 1.4 2000/02/15 07:43:04 brad Exp $

DISTNAME=	tkrat-2.0b8
CATEGORIES=	mail x11
MASTER_SITES=	http://www.dtek.chalmers.se/~maf/ratatosk/ \
		ftp://ftp.md.chalmers.se/pub/tkrat/ \
		ftp://ftp.sunet.se/pub/unix/mail/tkrat/

LIB_DEPENDS=	tcl82.1.3:${PORTSDIR}/lang/tcl82 \
		tk82.1.3:${PORTSDIR}/x11/tk82	

MAINTAINER=	riks@wni.com

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-tcl-bin="${LOCALBASE}/bin" \
		--with-tcl-include="${LOCALBASE}/include/tcl8.2 \
			${LOCALBASE}/include/tk8.2"

DOCFILES=	doc/userprocs doc/interface doc/userproc.example

post-install:
	@${ECHO_MSG} "===>  Copying documents to ${PREFIX}/${PORTDOCDIR}"
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkrat
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCFILES} ${PREFIX}/share/doc/tkrat

.include <bsd.port.mk>
