# $OpenBSD: Makefile,v 1.12 2001/05/06 01:46:50 lebel Exp $

COMMENT=	"mail user agent for X in C with a Tcl/Tk frontend"

DISTNAME=	tkrat-2.0b9
CATEGORIES=	mail x11
NEED_VERSION=	1.402
MASTER_SITES=	http://www.dtek.chalmers.se/~maf/ratatosk/ \
		ftp://ftp.md.chalmers.se/pub/tkrat/ \
		ftp://ftp.sunet.se/pub/unix/mail/tkrat/

LIB_DEPENDS=	tcl83.1.3::lang/tcl/8.3 \
		tk83.1.3::x11/tk/8.3	

MAINTAINER=	Rik Schneider <rik@deranged.schneider.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=	--with-tcl-bin="${LOCALBASE}/bin" \
		--with-tcl-include="${LOCALBASE}/include/tcl8.3 \
			${LOCALBASE}/include/tk8.3"

DOCFILES=	doc/userprocs doc/interface doc/userproc.example

post-install:
	@${ECHO_MSG} "===>  Copying documents to ${PREFIX}/${PORTDOCDIR}"
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkrat
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCFILES} ${PREFIX}/share/doc/tkrat

.include <bsd.port.mk>
