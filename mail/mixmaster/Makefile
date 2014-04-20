# $OpenBSD: Makefile,v 1.21 2014/04/20 10:00:21 jasper Exp $

COMMENT=	client for anonymous remailing

DISTNAME=	mixmaster-2.9.1
REVISION =	1
CATEGORIES=	mail security

# custom
PERMIT_PACKAGE_CDROM=	only with patch notice
PERMIT_PACKAGE_FTP=	only with patch notice
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto curses z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mixmaster/}
MASTER_SITES0=	http://distfiles.nl/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		mixmaster-update.pl.gz:0 allpingers.txt.gz:0

HOMEPAGE=	http://mixmaster.sourceforge.net/

WRKSRC=		${WRKDIST}/Src
CFLAGS+=	-DGLOBALMIXCONF="\"${SYSCONFDIR}/mixmaster/client.cfg\"" \
		-DHOMEMIXDIR="\".Mix\""

USE_GROFF =	Yes
NO_TEST=	Yes

MIXMASTER_FILES=${WRKDIST}/conf/* ${WRKDIST}/README \
	${WRKDIR}/mixmaster-update.pl ${WRKDIR}/allpingers.txt

post-patch:
	@cp ${FILESDIR}/Makefile ${WRKSRC}

pre-install:
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" ${WRKDIR}/mixmaster-update.pl

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mix ${PREFIX}/bin/mixmaster
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mixmaster
	${INSTALL_DATA} ${MIXMASTER_FILES} ${PREFIX}/share/examples/mixmaster
	${INSTALL_DATA} ${WRKDIST}/mix.1 ${PREFIX}/man/man1/mixmaster.1

.include <bsd.port.mk>
