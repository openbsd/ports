# $OpenBSD: Makefile,v 1.1.1.1 1999/11/12 14:14:52 brad Exp $

DISTNAME=	tcptrace.5.2.1
PKGNAME=	tcptrace-5.2.1
CATEGORIES=	net
MASTER_SITES=	http://jarok.cs.ohiou.edu/software/tcptrace/files/5.2.1/

MAINTAINER=	jethro@dqc.org

GNU_CONFIGURE=	yes

ALL_TARGET=	tcptrace
WRKSRC=	${WRKDIR}/tcptrace_5.2.1

DOCFILES=	ARGS BUGS CHANGES COPYRIGHT FAQ README README.mailing_list \
		README.modules README.tput_graphs WWW dot_tcptracerc.sample

do-install:
	@mkdir -p ${PREFIX}/share/doc/tcptrace
	${INSTALL_PROGRAM} ${WRKSRC}/tcptrace ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcptrace.man ${PREFIX}/man/man1/tcptrace.1
.for file in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/tcptrace
.endfor

.include <bsd.port.mk>
