# $OpenBSD: Makefile,v 1.60 2010/03/24 23:56:04 sthen Exp $

COMMENT=		mailfilter to identify and mark spam

VER=			3.3.1
DISTNAME=		Mail-SpamAssassin-${VER}
PKGNAME=		p5-${DISTNAME:S/-rc/rc/}
RULESNAME=		Mail-SpamAssassin-rules-${VER}.r923114
CATEGORIES=		mail perl5

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} ${RULESNAME}.tgz
EXTRACT_SUFX=		.tar.bz2
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}
WRKDIST=		${WRKDIR}/${DISTNAME:C/-rc.*//}

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=		http://spamassassin.apache.org/

# Apache Software License (v2)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto ssl z

MASTER_SITES=		${MASTER_SITE_APACHE:=spamassassin/source/}

COMMON_DEPENDS=		:p5-HTML-Parser->=3.31:www/p5-HTML-Parser \
			:p5-Mail-DKIM->=0.31:mail/p5-Mail-DKIM \
			:p5-Net-DNS->=0.34:net/p5-Net-DNS \
			:p5-NetAddr-IP-*:net/p5-NetAddr-IP \
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
	${SUBST_CMD} -c ${FILESDIR}/${FAQ} ${WRKSRC}/${FAQ}
	pod2man --section=1 ${WRKSRC}/spamc/spamc.pod > \
		${PREFIX}/man/man1/spamc.1
	${INSTALL_DATA} ${WRKSRC}/rules/local.cf ${WRKSRC}/rules/*.pre \
		${SAMPLE_CONFDIR}
.for i in ${FAQ} ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/SpamAssassin
.endfor
	cd ${PREFIX}/share/spamassassin; tar xzf ${FULLDISTDIR}/${RULESNAME}.tgz
	chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/spamassassin/*

pre-regress:
	mkdir -p ${PORTHOME}

.include <bsd.port.mk>
