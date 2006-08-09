# $OpenBSD: Makefile,v 1.40 2006/08/09 07:21:07 robert Exp $

COMMENT=		"mailfilter to identify and mark spam"

DISTNAME=		Mail-SpamAssassin-3.1.4
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5

MAINTAINER=		Andreas Voegele <andreas@altroot.de>

HOMEPAGE=		http://spamassassin.apache.org/

# Apache Software License (v2)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=		${MASTER_SITE_APACHE:=spamassassin/source/}

BUILD_DEPENDS=		:p5-HTML-Parser-*:www/p5-HTML-Parser \
			:p5-Digest-SHA1-*:security/p5-Digest-SHA1 \
			:p5-Net-DNS-*:net/p5-Net-DNS \
			:p5-Mail-SPF-Query-*:mail/p5-Mail-SPF-Query \
			:p5-IO-INET6-*:net/p5-IO-INET6 \
			:p5-IO-Socket-SSL-*:security/p5-IO-Socket-SSL \
			:p5-libwww-*:www/p5-libwww \
			:p5-Archive-Tar-*:archivers/p5-Archive-Tar \
			:p5-IO-Zlib-*:archivers/p5-IO-Zlib

RUN_DEPENDS=		${BUILD_DEPENDS}

MAKE_ENV+=		CC="${CC}"

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	RUN_NET_TESTS="no" \
			SYSCONFDIR=${SYSCONFDIR} \
			CONTACT_ADDRESS="the administrator of this system" \
			ENABLE_SSL="yes"

CONFDIR=		${SYSCONFDIR}/mail/spamassassin
RULES_DIR=		${PREFIX}/share/spamassassin
SAMPLE_CONFDIR=		${PREFIX}/share/examples/SpamAssassin

SUBST_VARS=		CONFDIR SAMPLE_CONFDIR

FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} \
			DEFRULESDIR=${WRKINST}${RULES_DIR} \
			LOCALRULESDIR=${WRKINST}${SAMPLE_CONFDIR}

# regress insists on creating files in $HOME
PORTHOME=		${WRKDIR}/temp-home

FAQ=		OpenBSD-SpamAssassin-mini-howto.html
DOCS=		README UPGRADE LICENSE procmailrc.example \
		sample-nonspam.txt sample-spam.txt
LOCALCF=	local.cf init.pre v310.pre v312.pre

pre-configure:
	@perl -pi -e "s#\@\@LOCAL_RULES_DIR\@\@#${CONFDIR}#" ${WRKSRC}/rules/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin
	${INSTALL_DATA_DIR} ${SAMPLE_CONFDIR}
	@sed -e "s|@SYSCONFDIR@|${SYSCONFDIR}|" \
	    -e "s|@PREFIX@|${TRUEPREFIX}|" \
	    ${FILESDIR}/${FAQ} > ${WRKSRC}/${FAQ}
	cd ${WRKSRC} && ${INSTALL_DATA} ${FAQ} ${DOCS} \
		${PREFIX}/share/doc/SpamAssassin
	cd ${WRKSRC}/rules && ${INSTALL_DATA} ${LOCALCF} ${SAMPLE_CONFDIR}
	cd ${WRKSRC} && pod2man --section=1 spamc/spamc.pod > \
	    ${PREFIX}/man/man1/spamc.1
	cd ${WRKSRC} && pod2man --section=8 spamd/spamd > \
	    ${PREFIX}/man/man8/spamd.8

pre-regress:
	mkdir -p ${PORTHOME}

.include <bsd.port.mk>
