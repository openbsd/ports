# $OpenBSD: Makefile,v 1.15 2002/10/28 01:38:46 naddy Exp $

COMMENT=	"TCP dump file analysis tool"

DISTNAME=	tcptrace-6.2.0
CATEGORIES=	net
HOMEPAGE=	http://masaka.cs.ohiou.edu/software/tcptrace/
MASTER_SITES=	${HOMEPAGE}/download/

MAINTAINER=	Dan Weeks <danimal@danimal.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=  :bison-*:devel/bison

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	YACC=bison

ALL_TARGET=	tcptrace

NO_REGRESS=	Tes

DOCFILES=	ARGS COPYRIGHT FAQ README README.mailing_list README.modules \
		README.tput_graphs WWW dot_tcptracerc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcptrace
	${INSTALL_PROGRAM} ${WRKSRC}/tcptrace ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcptrace.man ${PREFIX}/man/man1/tcptrace.1
.for file in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/tcptrace
.endfor

.include <bsd.port.mk>
