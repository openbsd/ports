# $OpenBSD: Makefile,v 1.13 2004/12/27 13:28:34 alek Exp $
# $NetBSD: Makefile,v 1.1.1.2 2001/03/26 11:59:15 hubertf Exp $

COMMENT=		"passive OS fingerprinting tool"

DISTNAME=		p0f-1.8.3
CATEGORIES=     	security net

HOMEPAGE=		http://www.stearns.org/p0f/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tgz

FLAVORS=		mysql
FLAVOR?=

EXAMPLES=		p0f.fp

.if ${FLAVOR:L} == "mysql"
LIB_DEPENDS=		lib/mysql/mysqlclient.10::databases/mysql
ALL_TARGET=		p0f-mysql
EXAMPLES+=		mysql/db.sql mysql/p0f-mysql.conf
.endif

MAKE_FLAGS=		CC='${CC}' \
			CFLAGS='${CFLAGS} -DSYSCONFDIR="\"${SYSCONFDIR}\""'
NO_REGRESS=		Yes

post-patch:
	@perl -i -pe 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/p0f ${PREFIX}/bin/p0f
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p0f
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p0f
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/p0f/README
	${INSTALL_MAN} ${WRKSRC}/p0f.1 ${PREFIX}/man/man1/p0f.1
.for file in ${EXAMPLES}
.if ${FLAVOR:L} == "mysql"
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p0f/mysql
.endif
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/examples/p0f/${file}
.endfor

.include <bsd.port.mk>
