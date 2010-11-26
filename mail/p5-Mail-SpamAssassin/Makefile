# $OpenBSD: Makefile,v 1.67 2010/11/26 07:51:00 espie Exp $

COMMENT=		mailfilter to identify and mark spam

VER=			3.3.1
DISTNAME=		Mail-SpamAssassin-${VER}
PKGNAME=		p5-${DISTNAME:S/-rc/rc/}
REVISION=		3
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

COMMON_DEPENDS=		www/p5-HTML-Parser>=3.31 \
			mail/p5-Mail-DKIM>=0.31 \
			net/p5-Net-DNS>=0.34 \
			net/p5-NetAddr-IP \
			net/p5-IO-Socket-INET6 \
			security/p5-IO-Socket-SSL \
			www/p5-libwww

BUILD_DEPENDS=		${COMMON_DEPENDS}
RUN_DEPENDS=		${COMMON_DEPENDS} \
			security/gnupg \
			devel/re2c

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
USE_GROFF =	Yes

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
