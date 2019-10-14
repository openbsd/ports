# $OpenBSD: Makefile,v 1.58 2019/10/14 21:05:07 jcs Exp $

COMMENT=	handle external logins, send and receive faxes

VERSION=	1.2.1
DISTNAME=	mgetty-${VERSION}
PKGNAME=	mgetty+sendfax-${VERSION}
CATEGORIES=	comms

HOMEPAGE=	http://mgetty.greenie.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c m util

MASTER_SITES=	ftp://mgetty.greenie.net/pub/mgetty/source/${VERSION:R}/

RUN_DEPENDS=	print/ghostscript/gnu \
		graphics/netpbm

WRKDIST=	${WRKDIR}/mgetty-${VERSION}

MAKE_FLAGS=	CC="${CC}"
MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR}

SAMPLE_SCRIPTS=	answer_fax.sh coverpg* fax* printfax* \
		new_fax.{NeXT,hpa,lj,m*,pbm,th,tiff}

pre-configure:
	sed -e "s,@prefix@,${PREFIX},g" \
		-e "s,@sysconfdir@,${SYSCONFDIR},g" \
		${FILESDIR}/setup > ${WRKDIR}/setup
	cp ${WRKSRC}/policy.h-dist ${WRKSRC}/policy.h
	${SUBST_CMD} -m 555 -c ${FILESDIR}/new_voice ${WRKSRC}/voice/scripts/new_voice

pre-install:
.for i in faxq.1 faxrm.1 faxqueue.5 fax.1 faxq-helper.8 mgetty.texi
	sed -i "s,faxrm,mgetty-faxrm,g" ${WRKSRC}/doc/${i}
	sed -i "s,usage\: faxrm,usage\: mgetty-faxrm,g" ${WRKSRC}/fax/faxrm.in
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mgetty+sendfax
	chmod a+x ${WRKSRC}/mkidirs

post-install:
	mv ${PREFIX}/bin/faxrm ${PREFIX}/bin/mgetty-faxrm
	mv ${PREFIX}/man/man1/faxrm.1 ${PREFIX}/man/man1/mgetty-faxrm.1
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
	${INSTALL_SCRIPT} ${WRKSRC}/voice/scripts/new_voice \
		${PREFIX}/share/examples/mgetty+sendfax/voice/scripts
	@mv ${PREFIX}/man/man1/fax.1 ${PREFIX}/man/man7/fax.7

TEST_TARGET=		check
TESTS_ENVIRONMENT=	MAKE=${GMAKE}

do-test:
	@cd ${WRKBUILD} && \
		exec ${SETENV} ${MAKE_ENV} \
		TESTS_ENVIRONMENT='${TESTS_ENVIRONMENT}' \
			${MAKE_PROGRAM} ${ALL_TEST_FLAGS} -f ${MAKE_FILE} \
			${TEST_TARGET}

.include <bsd.port.mk>
