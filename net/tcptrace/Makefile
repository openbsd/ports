# $OpenBSD: Makefile,v 1.6 2000/04/23 03:34:46 kevlo Exp $

DISTNAME=	tcptrace.5.2.1
PKGNAME=	tcptrace-5.2.1
CATEGORIES=	net
NEED_VERSION=	1.191
MASTER_SITES=	http://jarok.cs.ohiou.edu/software/tcptrace/files/5.2.1/

MAINTAINER=	jethro@dqc.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	Yes
FAKE=		Yes

ALL_TARGET=	tcptrace
WRKDIST=	${WRKDIR}/tcptrace_5.2.1

DOCFILES=	ARGS BUGS CHANGES COPYRIGHT FAQ README README.mailing_list \
		README.modules README.tput_graphs WWW dot_tcptracerc.sample

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcptrace
	${INSTALL_PROGRAM} ${WRKSRC}/tcptrace ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcptrace.man ${PREFIX}/man/man1/tcptrace.1
.for file in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/tcptrace
.endfor

.include <bsd.port.mk>
