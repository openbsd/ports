# $OpenBSD: Makefile,v 1.30 2006/03/04 10:38:58 mbalmer Exp $

COMMENT=	"handle external logins, send and receive faxes"

VERSION=	1.1.35
RELEASE=	Feb22
DISTNAME=	mgetty${VERSION}-${RELEASE}
PKGNAME=	mgetty+sendfax-${VERSION}
CATEGORIES=	comms

HOMEPAGE=	http://mgetty.greenie.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes
WANTLIB=		c m util

MASTER_SITES=	ftp://mgetty.greenie.net/pub/mgetty/source/1.1/

RUN_DEPENDS=	::print/ghostscript/gnu \
		::graphics/netpbm

WRKDIST=	${WRKDIR}/mgetty-${VERSION}

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR}

SAMPLE_SCRIPTS=	answer_fax.sh coverpg* fax* printfax* \
		new_fax.{NeXT,hpa,lj,m*,pbm,th,tiff}

pre-configure:
	@sed -e "s,@prefix@,${PREFIX},g" \
		-e "s,@sysconfdir@,${SYSCONFDIR},g" \
		${FILESDIR}/setup > ${WRKDIR}/setup
	@cp ${WRKSRC}/policy.h-dist ${WRKSRC}/policy.h

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mgetty+sendfax
	
post-install:
	${INSTALL_SCRIPT} ${WRKDIR}/setup ${PREFIX}/lib/mgetty+sendfax
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mgetty+sendfax
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mgetty+sendfax/faq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mgetty+sendfax/voice
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/mgetty+sendfax
	${INSTALL_DATA} ${WRKSRC}/faq/SGML/* ${PREFIX}/share/doc/mgetty+sendfax/faq
	${INSTALL_DATA} ${WRKSRC}/voice/doc/* ${PREFIX}/share/doc/mgetty+sendfax/voice
	${INSTALL_DATA} -m 600 ${WRKSRC}/voice/voice.conf-dist ${PREFIX}/share/examples/mgetty+sendfax/voice.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mgetty+sendfax/samples/new_fax.all
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mgetty+sendfax/voice/scripts
.for s in ${SAMPLE_SCRIPTS}
	${INSTALL_SCRIPT} ${WRKSRC}/samples/$s \
		${PREFIX}/share/examples/mgetty+sendfax/samples
.endfor
	${INSTALL_DATA} ${WRKSRC}/samples/new_fax.all/* \
		${PREFIX}/share/examples/mgetty+sendfax/samples/new_fax.all
	${INSTALL_SCRIPT} ${WRKSRC}/samples/new_fax.all/new_fax \
		${PREFIX}/share/examples/mgetty+sendfax/samples/new_fax.all
	${INSTALL_SCRIPT} ${WRKSRC}/voice/scripts/*.{sh,pl} \
		${PREFIX}/share/examples/mgetty+sendfax/voice/scripts
	@mv ${PREFIX}/man/man1/fax.1 ${PREFIX}/man/man7/fax.7

REGRESS_TARGET=		check
TESTS_ENVIRONMENT=	MAKE=${GMAKE}

do-regress:
	@cd ${WRKBUILD} && \
		exec ${SETENV} ${MAKE_ENV} \
		TESTS_ENVIRONMENT='${TESTS_ENVIRONMENT}' \
			${MAKE_PROGRAM} ${REGRESS_FLAGS} -f ${MAKE_FILE} \
			${REGRESS_TARGET}

.include <bsd.port.mk>
