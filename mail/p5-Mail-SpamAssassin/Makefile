# $OpenBSD: Makefile,v 1.57 2009/09/15 17:37:21 jasper Exp $

COMMENT=		mailfilter to identify and mark spam

DISTNAME=		Mail-SpamAssassin-3.2.5
PKGNAME=		p5-${DISTNAME}p2
CATEGORIES=		mail perl5

HOMEPAGE=		http://spamassassin.apache.org/

# Apache Software License (v2)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl z

MASTER_SITES=		${MASTER_SITE_APACHE:=spamassassin/source/}

COMMON_DEPENDS=		:p5-HTML-Parser->=3.31:www/p5-HTML-Parser \
			:p5-Digest-SHA1-*:security/p5-Digest-SHA1 \
			:p5-Net-DNS->=0.34:net/p5-Net-DNS \
			:p5-Mail-SPF-Query-*:mail/p5-Mail-SPF-Query \
			:p5-IO-Socket-INET6-*:net/p5-IO-Socket-INET6 \
			:p5-IO-Socket-SSL-*:security/p5-IO-Socket-SSL \
			:p5-libwww-*:www/p5-libwww

BUILD_DEPENDS=		${COMMON_DEPENDS}
RUN_DEPENDS=		${COMMON_DEPENDS} \
			:gnupg-*:security/gnupg \
			::devel/re2c

MAKE_ENV+=		CC="${CC}"

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	DESTDIR=${WRKINST} \
			SYSCONFDIR=${SYSCONFDIR} \
			LOCALSTATEDIR=${LOCALSTATEDIR} \
			CONTACT_ADDRESS="the administrator of this system" \
			ENABLE_SSL="yes"

CONFDIR=		${SYSCONFDIR}/mail/spamassassin
LOCALSTATEDIR=		/var/db/spamassassin
SAMPLE_CONFDIR=		${PREFIX}/share/examples/SpamAssassin

SUBST_VARS=		CONFDIR LOCALSTATEDIR

# regress insists on creating files in $HOME
PORTHOME=		${WRKDIR}/temp-home

FAQ=		OpenBSD-SpamAssassin-mini-howto.html
DOCS=		README UPGRADE LICENSE procmailrc.example \
		sample-nonspam.txt sample-spam.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin
	${INSTALL_DATA_DIR} ${SAMPLE_CONFDIR}
	@sed -e "s|@SYSCONFDIR@|${SYSCONFDIR}|" \
		-e "s|@PREFIX@|${TRUEPREFIX}|" \
		${FILESDIR}/${FAQ} > ${WRKSRC}/${FAQ}
	pod2man --section=1 ${WRKSRC}/spamc/spamc.pod > \
		${PREFIX}/man/man1/spamc.1
	${INSTALL_DATA} ${WRKSRC}/rules/local.cf ${WRKSRC}/rules/*.pre \
		${SAMPLE_CONFDIR}
.for i in ${FAQ} ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/SpamAssassin
.endfor

pre-regress:
	mkdir -p ${PORTHOME}

.include <bsd.port.mk>
