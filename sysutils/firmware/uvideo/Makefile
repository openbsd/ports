FW_DRIVER=	uvideo
FW_VER=		1.2
DISTNAME=	uvideo-firmware-${FW_VER}
REVISION=	3

HOMEPAGE=	http://www.nazgul.ch/uvideo/

# Info file
FIRMWARE=	info

# Apple iSight first generation
FIRMWARE+=	isight_05ac-8300

# Ricoh R5U87x
FIRMWARE+=	r5u87x_05ca-1803 r5u87x_05ca-1810 r5u87x_05ca-1812 \
		r5u87x_05ca-1835 r5u87x_05ca-1836 r5u87x_05ca-1837 \
		r5u87x_05ca-1839 r5u87x_05ca-183a r5u87x_05ca-183b \
		r5u87x_05ca-183e r5u87x_05ca-1841

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/uvideo_$i ${PREFIX}/firmware/uvideo_$i
.endfor

.include <bsd.port.mk>
