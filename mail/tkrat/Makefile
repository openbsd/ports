# $OpenBSD: Makefile,v 1.5 2000/03/05 18:30:33 espie Exp $

DISTNAME=	tkrat-2.0b8
CATEGORIES=	mail x11
NEED_VERSION=	1.223
MASTER_SITES=	http://www.dtek.chalmers.se/~maf/ratatosk/ \
		ftp://ftp.md.chalmers.se/pub/tkrat/ \
		ftp://ftp.sunet.se/pub/unix/mail/tkrat/

LIB_DEPENDS=	tcl82.1.3:lang/tcl82 \
		tk82.1.3:x11/tk82	

MAINTAINER=	riks@wni.com

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-tcl-bin="${LOCALBASE}/bin" \
		--with-tcl-include="${LOCALBASE}/include/tcl8.2 \
			${LOCALBASE}/include/tk8.2"

DOCFILES=	doc/userprocs doc/interface doc/userproc.example

post-install:
	@${ECHO_MSG} "===>  Copying documents to ${PREFIX}/${PORTDOCDIR}"
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkrat
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCFILES} ${PREFIX}/share/doc/tkrat

.include <bsd.port.mk>
