# $OpenBSD: Makefile,v 1.32 2013/03/11 11:35:56 espie Exp $

COMMENT=	Cistron RADIUS server

VERSION=	1.6.7
DISTNAME=	radiusd-cistron-${VERSION}
REVISION=	3
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.radius.cistron.nl/pub/radius/ \
		ftp://ftp.freeradius.org/pub/radius/ \
		ftp://ftp.mma.com.br/pub/cistron-radius/

HOMEPAGE=	http://www.radius.cistron.nl/

RUN_DEPENDS=	net/p5-Net-Telnet \
		net/p5-SNMP_Session

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

WRKSRC=		${WRKDIST}/src
MAKE_FILE=	Makefile.BSD
MAKE_FLAGS+=	CC="${CC}" LCRYPT="" DBM="-DUSE_DB1" DBMLIBS="" \
		CFLAGS="${CFLAGS} -DNOSHADOW -DUSE_SYSLOG -fno-builtin-log"
FAKE_FLAGS+=	BINDIR='${WRKINST}${PREFIX}/bin' \
		SBINDIR='${WRKINST}${PREFIX}/sbin' \
		MANDIR='${WRKINST}${PREFIX}/man' \
		RADIUS_DIR='${WRKINST}${PREFIX}/share/examples/radiusd-cistron'
USE_GROFF =	Yes
NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKDIST}/doc/clients.5rad ${PREFIX}/man/man5/clients.5
	${INSTALL_MAN} ${WRKDIST}/doc/naslist.5rad ${PREFIX}/man/man5/naslist.5
	${INSTALL_MAN} ${WRKDIST}/doc/builddbm.8rad \
		${PREFIX}/man/man8/builddbm.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/radiusd-cistron
	@for file in ${WRKDIST}/doc/README* ; do \
		${INSTALL_DATA} $$file ${PREFIX}/share/doc/radiusd-cistron; \
	done
	@perl -pi -e "s#[ ]SHAREDIR# ${SYSCONFDIR}/raddb#g" \
	    ${WRKDIST}/raddb/dictionary
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radiusd-cistron
	@for file in ${WRKDIST}/raddb/* ; do \
		${INSTALL_DATA} $$file \
		    ${PREFIX}/share/examples/radiusd-cistron; \
	done

.include <bsd.port.mk>
