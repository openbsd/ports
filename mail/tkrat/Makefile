# $OpenBSD: Makefile,v 1.3 2000/02/11 07:44:04 kevlo Exp $

DISTNAME=		tkrat-2.0b8
CATEGORIES=     	mail x11

MAINTAINER=		riks@wni.com

MASTER_SITES=		http://www.dtek.chalmers.se/~maf/ratatosk/ \
			ftp://ftp.md.chalmers.se/pub/tkrat/ \
			ftp://ftp.sunet.se/pub/unix/mail/tkrat/

LIB_DEPENDS=    	tcl82.1.3:${PORTSDIR}/lang/tcl82 \
			tk82.1.3:${PORTSDIR}/x11/tk82	

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=        --with-tcl-bin=${LOCALBASE}/bin \
			--with-tcl-include="${LOCALBASE}/include/tcl8.2 \
                                            ${LOCALBASE}/include/tk8.2"

DOCFILES=               doc/userprocs doc/interface doc/userproc.example
post-install:
	@${ECHO_MSG} "===>  Copying documents to ${PREFIX}/${PORTDOCDIR}"
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkrat
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/tkrat
.endfor

.include <bsd.port.mk>
