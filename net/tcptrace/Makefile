# $OpenBSD: Makefile,v 1.12 2002/10/16 21:27:50 pvalchev Exp $

COMMENT=	"TCP dump file analysis tool"

VERSION=	5.2.1
DISTNAME=	tcptrace.${VERSION}
PKGNAME=	tcptrace-${VERSION}
CATEGORIES=	net
MASTER_SITES=	http://jarok.cs.ohiou.edu/software/tcptrace/files/5.2.1/

MAINTAINER=	Jeremy Jethro <jethro@dqc.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu

ALL_TARGET=	tcptrace
WRKDIST=	${WRKDIR}/tcptrace_${VERSION}

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
