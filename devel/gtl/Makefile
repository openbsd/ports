# $OpenBSD: Makefile,v 1.7 2001/05/09 23:26:18 pvalchev Exp $ 

COMMENT=	"c++ graph data template library based on the stl"

PKGNAME=	${DISTNAME:L}
DISTNAME=	GTL-1.0.0
CATEGORIES=	devel
NEED_VERSION=	1.363

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	"use requires written permission"
PERMIT_PACKAGE_FTP=	"use requires written permission"
PERMIT_DISTFILES_CDROM=	"use requires written permission"	
PERMIT_DISTFILES_FTP=	"use requires written permission"

HOMEPAGE=	http://infosun.fmi.uni-passau.de/GTL/

MASTER_SITES=	#see_do-fetch_target

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	 echo "" ; \
	 echo "  The source of this port cannot be automatically fetched" ; \
	 echo "  due to licensing restrictions. You MUST visit :" ; \
	 echo "  ${HOMEPAGE}#down" ; \
	 echo "  and follow the instructions - you will have to send e-mail" ; \
	 echo "  with your personal information in order to be accepted." ; \
	 echo "" ; \
	 echo "  Once ${DISTFILES} has been downloaded, move it to ${DISTDIR}" ; \
	 echo "  and then go back and restart this build." ; \
	 echo "" ; \
	 exit 1 ; \
	fi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtl
	${INSTALL_DATA} ${WRKSRC}/doc/html/*.html ${PREFIX}/share/doc/gtl
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gtl

.include <bsd.port.mk>
