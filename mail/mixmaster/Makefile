# $OpenBSD: Makefile,v 1.4 2002/05/02 19:02:10 naddy Exp $

COMMENT=	"client for anonymous remailing"

VERSION=	2.0.4b45
DISTNAME=	mix${VERSION:S/.//g}
PKGNAME=	mixmaster-${VERSION}
CATEGORIES=	mail security
NEED_VERSION=	1.515

MAINTAINER=	Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.shinn.net/pub/remailer/mixmaster/v2.0/ \
		ftp://ftp.zedz.net/pub/crypto/remailer/mixmaster/ \
		http://tesla.desy.de/~nsturm/distfiles/

# this is a general mixmaster website, mixmaster itself is unmaintained
HOMEPAGE=	http://mixmaster.shinn.net

SYSCONFDIR=	/etc/mixmaster

WRKDIST=${WRKDIR}/Mix-${VERSION:S/.//g}
WRKSRC=${WRKDIST}/Src

NO_REGRESS=	Yes

MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}"

MIXMASTER_FILES=${WRKDIST}/type2.list ${WRKDIST}/mixmaster.conf.in \
		${WRKDIST}/destination.block ${WRKDIST}/mix.help.in \
		${WRKDIST}/pubring.mix ${WRKDIST}/source.block \
		${WRKDIST}/mix.list ${WRKDIST}/urls ${WRKDIST}/headers.del \
		${WRKDIST}/getlist ${WRKDIST}/keyinfo.txt.in \
		${WRKDIST}/mixmaster.conf ${WRKDIST}/mix.help

post-patch:
	@perl -i -p -e "s#MIXDEST#${SYSCONFDIR}#" ${WRKDIST}/getlist

post-install:
	@strip ${PREFIX}/sbin/mixmaster
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mixmaster
	${INSTALL_DATA} ${MIXMASTER_FILES} ${PREFIX}/share/examples/mixmaster
	${INSTALL_DATA} ${WRKDIST}/mixmaster.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
